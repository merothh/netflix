.class public final Lcom/google/android/play/core/assetpacks/bc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/dd;->a(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/a;->b()Lcom/google/android/play/core/assetpacks/bb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bc;->a:Lcom/google/android/play/core/assetpacks/bb;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bc;->a:Lcom/google/android/play/core/assetpacks/bb;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bb;->a()J

    move-result-wide v0

    return-wide v0
.end method
