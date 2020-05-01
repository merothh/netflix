.class Lo/aft;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final a:I

.field private final c:Lo/afu;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/afu;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aft;->c:Lo/afu;

    iput-object p2, p0, Lo/aft;->e:Ljava/lang/String;

    iput p3, p0, Lo/aft;->a:I

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 3

    iget-object v0, p0, Lo/aft;->c:Lo/afu;

    iget-object v1, p0, Lo/aft;->e:Ljava/lang/String;

    iget v2, p0, Lo/aft;->a:I

    invoke-static {v0, v1, v2, p1}, Lo/afu;->c(Lo/afu;Ljava/lang/String;ILio/reactivex/SingleEmitter;)V

    return-void
.end method
