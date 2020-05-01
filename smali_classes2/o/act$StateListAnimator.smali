.class final Lo/act$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/act;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/act;

.field final synthetic e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;


# direct methods
.method constructor <init>(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 0

    iput-object p1, p0, Lo/act$StateListAnimator;->d:Lo/act;

    iput-object p2, p0, Lo/act$StateListAnimator;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lo/act$StateListAnimator;->d:Lo/act;

    invoke-static {v0}, Lo/act;->e(Lo/act;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lo/act$StateListAnimator;->d:Lo/act;

    iget-object v1, p0, Lo/act$StateListAnimator;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    invoke-static {v0, v1}, Lo/act;->d(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lo/act$StateListAnimator;->d:Lo/act;

    invoke-static {v0}, Lo/act;->d(Lo/act;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iget-object v1, p0, Lo/act$StateListAnimator;->d:Lo/act;

    invoke-static {v1}, Lo/act;->e(Lo/act;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
