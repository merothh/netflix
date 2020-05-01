.class final Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->a(Lo/Serializable;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;

.field final synthetic e:Lo/Serializable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;Lo/Serializable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;->b:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;->e:Lo/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;->e(Ljava/util/List;)Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;)Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;>;)",
            "Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AnalogClock;

    .line 42
    iget-object v2, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;->e:Lo/Serializable;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;->b:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;

    invoke-static {v3}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->a(Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;)Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/AnalogClock;->d(Lo/Serializable;Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;-><init>(Ljava/util/List;)V

    return-object v0
.end method
