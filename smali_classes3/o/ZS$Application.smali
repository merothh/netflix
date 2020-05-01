.class public final Lo/ZS$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZS;->c(ILjava/lang/String;J)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/ZS;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lo/ZS;ILjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lo/ZS$Application;->b:Lo/ZS;

    iput p2, p0, Lo/ZS$Application;->c:I

    iput-object p3, p0, Lo/ZS$Application;->d:Ljava/lang/String;

    iput-wide p4, p0, Lo/ZS$Application;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/ZR;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lo/ZS$Application;->b:Lo/ZS;

    invoke-static {v0}, Lo/ZS;->d(Lo/ZS;)Lo/bs;

    move-result-object v0

    .line 180
    new-instance v11, Lo/RootTrustManagerFactorySpi;

    .line 181
    iget v1, p0, Lo/ZS$Application;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lo/ZS$Application;->d:Ljava/lang/String;

    .line 183
    iget-wide v4, p0, Lo/ZS$Application;->e:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x31

    const-string v10, ""

    move-object v1, v11

    .line 180
    invoke-direct/range {v1 .. v10}, Lo/RootTrustManagerFactorySpi;-><init>(Ljava/lang/Integer;Ljava/lang/String;JIIIILjava/lang/String;)V

    check-cast v11, Lo/DateTransformation;

    .line 179
    invoke-interface {v0, v11}, Lo/bs;->b(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v1

    .line 192
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchEntity$1$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchEntity$1$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 195
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchEntity$1$2;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchEntity$1$2;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 191
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
