.class Lo/WifiDisplayStatus$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WifiDisplayStatus;->a(Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/WifiDisplayStatus$Application;

.field final synthetic d:Lo/HdmiRecordListener$StateListAnimator;

.field final synthetic e:Lo/WifiDisplayStatus;


# direct methods
.method constructor <init>(Lo/WifiDisplayStatus;Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lo/WifiDisplayStatus$3;->e:Lo/WifiDisplayStatus;

    iput-object p2, p0, Lo/WifiDisplayStatus$3;->c:Lo/WifiDisplayStatus$Application;

    iput-object p3, p0, Lo/WifiDisplayStatus$3;->d:Lo/HdmiRecordListener$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lo/WifiDisplayStatus$3;->e:Lo/WifiDisplayStatus;

    iget-object v1, p0, Lo/WifiDisplayStatus$3;->c:Lo/WifiDisplayStatus$Application;

    iget-object v2, p0, Lo/WifiDisplayStatus$3;->d:Lo/HdmiRecordListener$StateListAnimator;

    invoke-virtual {v0, v1, v2}, Lo/WifiDisplayStatus;->e(Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V

    return-void
.end method
