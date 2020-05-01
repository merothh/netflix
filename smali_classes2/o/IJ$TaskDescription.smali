.class public final Lo/IJ$TaskDescription;
.super Lo/IJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Lo/IJ$ActionBar;


# direct methods
.method public constructor <init>(Lo/IJ$ActionBar;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lo/IJ;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/IJ$TaskDescription;->a:Lo/IJ$ActionBar;

    return-void
.end method


# virtual methods
.method public final e()Lo/IJ$ActionBar;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/IJ$TaskDescription;->a:Lo/IJ$ActionBar;

    return-object v0
.end method
