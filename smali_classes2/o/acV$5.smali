.class Lo/acV$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acV;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/acV;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lo/acV$5;->c:Lo/acV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "User verified call to proceed!"

    .line 698
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lo/acV$5;->c:Lo/acV;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/acV;->d(Lo/acV;Z)Z

    .line 700
    iget-object v0, p0, Lo/acV$5;->c:Lo/acV;

    invoke-static {v0}, Lo/acV;->c(Lo/acV;)V

    return-void
.end method
