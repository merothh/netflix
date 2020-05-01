.class public final Lcom/google/android/play/core/assetpacks/bt;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/play/core/assetpacks/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/assetpacks/a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bt;->a:Lcom/google/android/play/core/assetpacks/m;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/play/core/assetpacks/bu;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/bu;-><init>(Lcom/google/android/play/core/assetpacks/m;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-class v1, Lcom/google/android/play/core/assetpacks/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/play/core/assetpacks/m;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bt;->a:Lcom/google/android/play/core/assetpacks/m;

    return-void
.end method
