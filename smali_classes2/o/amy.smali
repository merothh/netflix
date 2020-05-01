.class public abstract Lo/amy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/amy$TaskDescription;,
        Lo/amy$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/amy$TaskDescription;

.field private static final b:Lo/amy;

.field public static final e:Lo/amy$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/amy$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/amy$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/amy;->e:Lo/amy$Application;

    .line 242
    sget-object v0, Lo/alp;->c:Lo/alq;

    invoke-virtual {v0}, Lo/alq;->a()Lo/amy;

    move-result-object v0

    sput-object v0, Lo/amy;->b:Lo/amy;

    .line 268
    sget-object v0, Lo/amy$TaskDescription;->b:Lo/amy$TaskDescription;

    sput-object v0, Lo/amy;->a:Lo/amy$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b()Lo/amy;
    .locals 1

    .line 20
    sget-object v0, Lo/amy;->b:Lo/amy;

    return-object v0
.end method


# virtual methods
.method public c(II)I
    .locals 3

    .line 57
    invoke-static {p1, p2}, Lo/amx;->d(II)V

    sub-int v0, p2, p1

    if-gtz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/amy;->d()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-le p2, v0, :cond_0

    return v0

    :cond_2
    :goto_1
    neg-int p2, v0

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    .line 61
    invoke-static {v0}, Lo/amx;->d(I)I

    move-result p2

    .line 62
    invoke-virtual {p0, p2}, Lo/amy;->d(I)I

    move-result p2

    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Lo/amy;->d()I

    move-result p2

    ushr-int/lit8 p2, p2, 0x1

    .line 67
    rem-int v1, p2, v0

    sub-int/2addr p2, v1

    add-int/lit8 v2, v0, -0x1

    add-int/2addr p2, v2

    if-ltz p2, :cond_3

    move p2, v1

    :goto_2
    add-int/2addr p1, p2

    return p1
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x20

    .line 36
    invoke-virtual {p0, v0}, Lo/amy;->d(I)I

    move-result v0

    return v0
.end method

.method public abstract d(I)I
.end method

.method public e(I)I
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0, p1}, Lo/amy;->c(II)I

    move-result p1

    return p1
.end method
