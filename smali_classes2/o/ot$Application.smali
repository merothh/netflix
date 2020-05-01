.class Lo/ot$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic d:Lo/ot;


# direct methods
.method private constructor <init>(Lo/ot;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lo/ot$Application;->d:Lo/ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ot;Lo/ot$1;)V
    .locals 0

    .line 1313
    invoke-direct {p0, p1}, Lo/ot$Application;-><init>(Lo/ot;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1316
    iget-object v0, p0, Lo/ot$Application;->d:Lo/ot;

    invoke-static {v0}, Lo/ot;->b(Lo/ot;)V

    return-void
.end method
