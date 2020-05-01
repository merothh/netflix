.class public final Lo/ZR$Dialog;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialog"
.end annotation


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput p1, p0, Lo/ZR$Dialog;->e:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 131
    iget v0, p0, Lo/ZR$Dialog;->e:I

    return v0
.end method
