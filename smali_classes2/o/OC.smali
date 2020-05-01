.class public final Lo/OC;
.super Lo/OL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OC$ActionBar;
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2, v0}, Lo/OC;-><init>(ILjava/lang/String;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const-string v0, "text"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v0, v1, v2}, Lo/OL;-><init>(ZILo/amc;)V

    iput p1, p0, Lo/OC;->d:I

    iput-object p2, p0, Lo/OC;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILo/amc;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x2

    :cond_0
    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    const-string p2, ""

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/OC;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 10
    iget v0, p0, Lo/OC;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/OC;->c:Ljava/lang/String;

    return-object v0
.end method
