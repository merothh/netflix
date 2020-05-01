.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "loadPugResourcesBg: loading in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPugDefaultImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$202(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPugSelectedImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$302(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    return-void
.end method
