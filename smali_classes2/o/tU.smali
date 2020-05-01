.class public Lo/tU;
.super Lo/tC;
.source ""


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lo/tC;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    .line 12
    iput p5, p0, Lo/tU;->c:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 24
    iget v0, p0, Lo/tU;->c:I

    return v0
.end method
