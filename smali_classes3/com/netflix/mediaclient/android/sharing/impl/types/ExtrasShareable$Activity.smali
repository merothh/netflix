.class final Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;->a(Lo/Serializable;)Lio/reactivex/Observable;
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
.field final synthetic b:Lo/Serializable;

.field final synthetic e:Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;Lo/Serializable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$Activity;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$Activity;->b:Lo/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$Activity;->b(Ljava/util/List;)Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;",
            ">;>;)",
            "Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AnalogClock;

    .line 30
    iget-object v2, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$Activity;->b:Lo/Serializable;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$Activity;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;

    invoke-static {v3}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;->d(Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;)Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/AnalogClock;->d(Lo/Serializable;Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;-><init>(Ljava/util/List;)V

    return-object v0
.end method
