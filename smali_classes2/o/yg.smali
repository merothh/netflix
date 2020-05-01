.class Lo/yg;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Lcom/netflix/mediaclient/api/res/AssetType;

.field private final e:Lo/ye;


# direct methods
.method public constructor <init>(Lo/ye;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/yg;->e:Lo/ye;

    iput-object p2, p0, Lo/yg;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/yg;->d:Lcom/netflix/mediaclient/api/res/AssetType;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 3

    iget-object v0, p0, Lo/yg;->e:Lo/ye;

    iget-object v1, p0, Lo/yg;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/yg;->d:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-static {v0, v1, v2, p1}, Lo/ye;->e(Lo/ye;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method
