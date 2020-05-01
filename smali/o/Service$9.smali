.class Lo/Service$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Service;->c(Lo/UiAutomationConnection;Lo/DevicePolicyCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Service;

.field final synthetic d:Lo/UiAutomationConnection;

.field final synthetic e:Lo/DevicePolicyCache;


# direct methods
.method constructor <init>(Lo/Service;Lo/DevicePolicyCache;Lo/UiAutomationConnection;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lo/Service$9;->a:Lo/Service;

    iput-object p2, p0, Lo/Service$9;->e:Lo/DevicePolicyCache;

    iput-object p3, p0, Lo/Service$9;->d:Lo/UiAutomationConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1076
    iget-object v0, p0, Lo/Service$9;->a:Lo/Service;

    iget-object v1, p0, Lo/Service$9;->e:Lo/DevicePolicyCache;

    iget-object v2, p0, Lo/Service$9;->d:Lo/UiAutomationConnection;

    invoke-virtual {v0, v1, v2}, Lo/Service;->b(Lo/DevicePolicyCache;Lo/UiAutomationConnection;)V

    return-void
.end method
