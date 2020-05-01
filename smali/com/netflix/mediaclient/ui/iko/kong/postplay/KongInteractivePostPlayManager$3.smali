.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
