.class public final Lo/DG$Fragment;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fragment"
.end annotation


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    iput p1, p0, Lo/DG$Fragment;->e:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 40
    iget v0, p0, Lo/DG$Fragment;->e:I

    return v0
.end method
