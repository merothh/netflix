.class public final Lo/DC$Dialog;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialog"
.end annotation


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput p1, p0, Lo/DC$Dialog;->c:I

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 46
    iget v0, p0, Lo/DC$Dialog;->c:I

    return v0
.end method
