.class public final Lo/amz;
.super Lo/amA;
.source ""


# instance fields
.field private final d:Lo/amz$Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lo/amA;-><init>()V

    .line 51
    new-instance v0, Lo/amz$Application;

    invoke-direct {v0}, Lo/amz$Application;-><init>()V

    iput-object v0, p0, Lo/amz;->d:Lo/amz$Application;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Random;
    .locals 2

    .line 57
    iget-object v0, p0, Lo/amz;->d:Lo/amz$Application;

    invoke-virtual {v0}, Lo/amz$Application;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
