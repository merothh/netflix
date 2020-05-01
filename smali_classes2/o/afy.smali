.class Lo/afy;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Z

.field private final b:Lo/afu$1;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/afu$1;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afy;->b:Lo/afu$1;

    iput-object p2, p0, Lo/afy;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lo/afy;->a:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/afy;->b:Lo/afu$1;

    iget-object v1, p0, Lo/afy;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lo/afy;->a:Z

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p1}, Lo/afu$1;->d(Lo/afu$1;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    return-void
.end method
