.class public final Lo/DG$Application;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/DG$Application;->b:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lo/DG$Application;->b:Z

    return v0
.end method
