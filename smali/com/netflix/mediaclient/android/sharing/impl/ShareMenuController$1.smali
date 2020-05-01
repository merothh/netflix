.class final Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/OfPrimitive$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$1;->a:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 21
    instance-of v1, v0, Lo/TestLooperManager;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lo/TestLooperManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$1;->a:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->access$getShareInProgress$p(Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;)Lo/AnalogClock;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x3eb33333    # 0.35f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Lo/TestLooperManager;->e(F)Lo/TestLooperManager;

    goto :goto_0

    :cond_2
    return-void
.end method
