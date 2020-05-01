.class public final Lo/UP$Paint;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Paint"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UP$Paint;->a:I

    iput p2, p0, Lo/UP$Paint;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 70
    iget v0, p0, Lo/UP$Paint;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 70
    iget v0, p0, Lo/UP$Paint;->b:I

    return v0
.end method
