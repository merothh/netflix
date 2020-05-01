.class public final Lo/FH$ClipData;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipData"
.end annotation


# instance fields
.field private final b:I

.field private final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    iput p1, p0, Lo/FH$ClipData;->d:I

    iput p2, p0, Lo/FH$ClipData;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 58
    iget v0, p0, Lo/FH$ClipData;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 58
    iget v0, p0, Lo/FH$ClipData;->b:I

    return v0
.end method
