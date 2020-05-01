.class public final Lo/ZS$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZS;->d(Ljava/lang/String;JIIILjava/lang/String;)Lio/reactivex/Observable;
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
.field final synthetic a:Lo/ZS;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:I


# direct methods
.method constructor <init>(Lo/ZS;Ljava/lang/String;JIIIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/ZS$ActionBar;->a:Lo/ZS;

    iput-object p2, p0, Lo/ZS$ActionBar;->b:Ljava/lang/String;

    iput-wide p3, p0, Lo/ZS$ActionBar;->d:J

    iput p5, p0, Lo/ZS$ActionBar;->c:I

    iput p6, p0, Lo/ZS$ActionBar;->e:I

    iput p7, p0, Lo/ZS$ActionBar;->i:I

    iput p8, p0, Lo/ZS$ActionBar;->j:I

    iput-object p9, p0, Lo/ZS$ActionBar;->g:Ljava/lang/String;

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

    .line 142
    iget-object v0, p0, Lo/ZS$ActionBar;->a:Lo/ZS;

    invoke-static {v0}, Lo/ZS;->d(Lo/ZS;)Lo/bs;

    move-result-object v0

    .line 143
    new-instance v11, Lo/RootTrustManagerFactorySpi;

    .line 144
    iget-object v2, p0, Lo/ZS$ActionBar;->b:Ljava/lang/String;

    .line 145
    iget-wide v3, p0, Lo/ZS$ActionBar;->d:J

    .line 146
    iget v5, p0, Lo/ZS$ActionBar;->c:I

    .line 147
    iget v6, p0, Lo/ZS$ActionBar;->e:I

    .line 148
    iget v7, p0, Lo/ZS$ActionBar;->i:I

    .line 149
    iget v1, p0, Lo/ZS$ActionBar;->j:I

    add-int/2addr v1, v7

    add-int/lit8 v8, v1, -0x1

    .line 150
    iget-object v9, p0, Lo/ZS$ActionBar;->g:Ljava/lang/String;

    .line 151
    sget-object v10, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v1, v11

    .line 143
    invoke-direct/range {v1 .. v10}, Lo/RootTrustManagerFactorySpi;-><init>(Ljava/lang/String;JIIIILjava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    check-cast v11, Lo/DateTransformation;

    .line 142
    invoke-interface {v0, v11}, Lo/bs;->b(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v1

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchResults$1$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchResults$1$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 166
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchResults$1$2;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchRepository$fetchSearchResults$1$2;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 154
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
