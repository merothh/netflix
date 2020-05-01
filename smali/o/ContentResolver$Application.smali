.class Lo/ContentResolver$Application;
.super Lo/ContentResolver$LoaderManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private final a:Lo/ECPrivateKeySpec;


# direct methods
.method constructor <init>(Lo/ECPrivateKeySpec;)V
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, v0}, Lo/ContentResolver$LoaderManager;-><init>(Lo/ContentResolver$3;)V

    .line 433
    iput-object p1, p0, Lo/ContentResolver$Application;->a:Lo/ECPrivateKeySpec;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 443
    iget-object v0, p0, Lo/ContentResolver$Application;->a:Lo/ECPrivateKeySpec;

    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->stop()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 438
    iget-object v0, p0, Lo/ContentResolver$Application;->a:Lo/ECPrivateKeySpec;

    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->start()V

    return-void
.end method
