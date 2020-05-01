.class final Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->addItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

.field final synthetic e:Lo/AnalogClock;


# direct methods
.method constructor <init>(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;->e:Lo/AnalogClock;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;->b:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;->b:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;->e:Lo/AnalogClock;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->access$setShareInProgress$p(Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;Lo/AnalogClock;)V

    .line 50
    iget-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;->b:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;->e:Lo/AnalogClock;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;->b:Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->requestModelBuild()V

    return-void
.end method
