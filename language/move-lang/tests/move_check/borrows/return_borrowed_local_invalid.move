module M {
    struct S { f: u64 }
    id<T>(r: &T): &T {
        r
    }
    id_mut<T>(r: &mut T): &mut T {
        r
    }
    t0(): (&mut u64, &u64, &mut u64, &u64, &mut u64, &u64, &mut u64, &u64) {
        let v1 = 0;
        let v2 = 0;
        let v3 = 0;
        let v4 = 0;
        let s1 = S { f: 0 };
        let s2 = S { f: 0 };
        let s3 = S { f: 0 };
        let s4 = S { f: 0 };

        (&mut v1,
        &v2,
        id_mut(&mut v3),
        id(&v4),
        &mut s1.f,
        &s2.f,
        id_mut(&mut s3.f),
        id(&s4.f))
    }
}
