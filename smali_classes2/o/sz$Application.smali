.class Lo/sz$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private final c:Lo/sB;

.field private final d:Lo/BW;

.field final synthetic e:Lo/sz;


# direct methods
.method public constructor <init>(Lo/sz;Lo/BW;Lo/sB;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lo/sz$Application;->e:Lo/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p2, p0, Lo/sz$Application;->d:Lo/BW;

    .line 751
    iput-object p3, p0, Lo/sz$Application;->c:Lo/sB;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 759
    iget-object v0, p0, Lo/sz$Application;->e:Lo/sz;

    invoke-static {v0}, Lo/sz;->c(Lo/sz;)Lo/sJ;

    move-result-object v0

    iget-object v1, p0, Lo/sz$Application;->d:Lo/BW;

    iget-object v2, p0, Lo/sz$Application;->c:Lo/sB;

    invoke-virtual {v2}, Lo/sB;->ad()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/sJ;->b(Lo/BW;Lo/sB;J)V

    return-void
.end method
