.class Lo/afv;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final a:I

.field private final b:Lo/afu;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/afu;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afv;->b:Lo/afu;

    iput-object p2, p0, Lo/afv;->d:Ljava/lang/String;

    iput p3, p0, Lo/afv;->a:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo/afv;->b:Lo/afu;

    iget-object v1, p0, Lo/afv;->d:Ljava/lang/String;

    iget v2, p0, Lo/afv;->a:I

    check-cast p1, Lo/afu$StateListAnimator;

    invoke-static {v0, v1, v2, p1}, Lo/afu;->a(Lo/afu;Ljava/lang/String;ILo/afu$StateListAnimator;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
