.class Lo/ContextHubInfo$Application$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ContextHubInfo$Application;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ContextHubInfo$Application;

.field final synthetic d:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lo/ContextHubInfo$Application;Landroid/util/Pair;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/ContextHubInfo$Application$1;->c:Lo/ContextHubInfo$Application;

    iput-object p2, p0, Lo/ContextHubInfo$Application$1;->d:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    iget-object v0, p0, Lo/ContextHubInfo$Application$1;->c:Lo/ContextHubInfo$Application;

    iget-object v0, v0, Lo/ContextHubInfo$Application;->a:Lo/ContextHubInfo;

    iget-object v1, p0, Lo/ContextHubInfo$Application$1;->d:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lo/BrightnessChangeEvent;

    iget-object v2, p0, Lo/ContextHubInfo$Application$1;->d:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lo/HdmiTimerRecordSources;

    invoke-virtual {v0, v1, v2}, Lo/ContextHubInfo;->c(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
