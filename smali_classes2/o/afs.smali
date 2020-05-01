.class Lo/afs;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final a:I

.field private final b:Lo/afu;

.field private final c:Lcom/netflix/mediaclient/api/res/AssetType;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Z

.field private final h:Landroid/graphics/Bitmap$Config;

.field private final i:Z

.field private final j:I


# direct methods
.method public constructor <init>(Lo/afu;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afs;->b:Lo/afu;

    iput-object p2, p0, Lo/afs;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/afs;->c:Lcom/netflix/mediaclient/api/res/AssetType;

    iput p4, p0, Lo/afs;->a:I

    iput p5, p0, Lo/afs;->e:I

    iput p6, p0, Lo/afs;->j:I

    iput-object p7, p0, Lo/afs;->h:Landroid/graphics/Bitmap$Config;

    iput-boolean p8, p0, Lo/afs;->i:Z

    iput-boolean p9, p0, Lo/afs;->f:Z

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 10

    iget-object v0, p0, Lo/afs;->b:Lo/afu;

    iget-object v1, p0, Lo/afs;->d:Ljava/lang/String;

    iget-object v2, p0, Lo/afs;->c:Lcom/netflix/mediaclient/api/res/AssetType;

    iget v3, p0, Lo/afs;->a:I

    iget v4, p0, Lo/afs;->e:I

    iget v5, p0, Lo/afs;->j:I

    iget-object v6, p0, Lo/afs;->h:Landroid/graphics/Bitmap$Config;

    iget-boolean v7, p0, Lo/afs;->i:Z

    iget-boolean v8, p0, Lo/afs;->f:Z

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lo/afu;->e(Lo/afu;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZLio/reactivex/SingleEmitter;)V

    return-void
.end method
