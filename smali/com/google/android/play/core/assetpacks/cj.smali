.class final synthetic Lcom/google/android/play/core/assetpacks/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/cq;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/cr;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/cr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cj;->a:Lcom/google/android/play/core/assetpacks/cr;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/cj;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cj;->a:Lcom/google/android/play/core/assetpacks/cr;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/cj;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/cr;->c(I)V

    const/4 v0, 0x0

    return-object v0
.end method
