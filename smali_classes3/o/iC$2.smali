.class Lo/iC$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/iC;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/iC;


# direct methods
.method constructor <init>(Lo/iC;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/iC$2;->d:Lo/iC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/iC$2;->d:Lo/iC;

    invoke-static {v0}, Lo/iC;->a(Lo/iC;)V

    return-void
.end method
