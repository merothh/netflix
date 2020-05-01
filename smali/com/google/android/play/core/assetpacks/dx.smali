.class abstract Lcom/google/android/play/core/assetpacks/dx;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;JIZ[B)Lcom/google/android/play/core/assetpacks/dx;
    .locals 8

    new-instance v7, Lcom/google/android/play/core/assetpacks/bl;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/assetpacks/bl;-><init>(Ljava/lang/String;JIZ[B)V

    return-object v7
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract b()J
.end method

.method abstract c()I
.end method

.method abstract d()Z
.end method

.method abstract e()[B
.end method
