.class public Lo/NetworkScoreManager;
.super Ljava/lang/Object;


# direct methods
.method public static b([C[CI)V
    .locals 4

    .line 1159
    rem-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    mul-int/lit16 v0, v0, 0x7fce

    add-int/lit8 v1, p2, 0x2

    rem-int/lit8 v1, v1, 0x4

    aget-char v2, p1, v1

    add-int/2addr v0, v2

    const v2, 0xffff

    rem-int/2addr v0, v2

    int-to-char v0, v0

    add-int/lit8 p2, p2, 0x3

    .line 1162
    rem-int/lit8 p2, p2, 0x4

    aget-char v3, p0, p2

    mul-int/lit16 v3, v3, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v3, v1

    div-int/2addr v3, v2

    int-to-char v1, v3

    aput-char v1, p1, p2

    .line 1166
    aput-char v0, p0, p2

    return-void
.end method
