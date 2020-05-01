.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager$1;
.super Ljava/lang/Object;
.source "KongSoundPoolManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "KongSoundPoolManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SoundPool load complete callback status for sound id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const-string/jumbo v0, "success"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundIdToLoadedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string/jumbo v0, "failure"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
