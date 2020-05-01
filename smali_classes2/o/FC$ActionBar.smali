.class public final Lo/FC$ActionBar;
.super Lo/FC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final c:Lo/Ay;

.field private final e:Lo/Bd;


# direct methods
.method public constructor <init>(Lo/Ay;Lo/Bd;)V
    .locals 1

    const-string v0, "videoSummary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lo/FC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FC$ActionBar;->c:Lo/Ay;

    iput-object p2, p0, Lo/FC$ActionBar;->e:Lo/Bd;

    return-void
.end method


# virtual methods
.method public final c()Lo/Ay;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/FC$ActionBar;->c:Lo/Ay;

    return-object v0
.end method

.method public final d()Lo/Bd;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/FC$ActionBar;->e:Lo/Bd;

    return-object v0
.end method
