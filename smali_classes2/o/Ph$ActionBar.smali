.class public final Lo/Ph$ActionBar;
.super Lo/Ph;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final c:Lo/Pf;


# direct methods
.method public constructor <init>(Lo/Pf;)V
    .locals 1

    const-string v0, "notificationsListModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lo/Ph;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/Ph$ActionBar;->c:Lo/Pf;

    return-void
.end method


# virtual methods
.method public final e()Lo/Pf;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/Ph$ActionBar;->c:Lo/Pf;

    return-object v0
.end method
