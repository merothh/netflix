.class public Lo/IInputMethodWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[I

.field private static final d:[I


# instance fields
.field protected final c:[[C

.field protected final e:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 45
    fill-array-data v1, :array_0

    sput-object v1, Lo/IInputMethodWrapper;->d:[I

    new-array v0, v0, [I

    .line 46
    fill-array-data v0, :array_1

    sput-object v0, Lo/IInputMethodWrapper;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1f40
        0x1f40
        0x7d0
        0x7d0
    .end array-data

    :array_1
    .array-data 4
        0xfa0
        0xfa0
        0xc8
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 62
    invoke-direct {p0, v0, v0}, Lo/IInputMethodWrapper;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-array p1, p1, [[B

    iput-object p1, p0, Lo/IInputMethodWrapper;->e:[[B

    .line 73
    new-array p1, p2, [[C

    iput-object p1, p0, Lo/IInputMethodWrapper;->c:[[C

    return-void
.end method


# virtual methods
.method protected a(I)[B
    .locals 0

    .line 155
    new-array p1, p1, [B

    return-object p1
.end method

.method protected b(I)I
    .locals 1

    .line 142
    sget-object v0, Lo/IInputMethodWrapper;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public b(I[B)V
    .locals 1

    .line 104
    iget-object v0, p0, Lo/IInputMethodWrapper;->e:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method protected c(I)I
    .locals 1

    .line 146
    sget-object v0, Lo/IInputMethodWrapper;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public d(I[C)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/IInputMethodWrapper;->c:[[C

    aput-object p2, v0, p1

    return-void
.end method

.method public final d(I)[B
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lo/IInputMethodWrapper;->e(II)[B

    move-result-object p1

    return-object p1
.end method

.method public d(II)[C
    .locals 3

    .line 118
    invoke-virtual {p0, p1}, Lo/IInputMethodWrapper;->c(I)I

    move-result v0

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 122
    :cond_0
    iget-object v0, p0, Lo/IInputMethodWrapper;->c:[[C

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 123
    array-length v2, v1

    if-ge v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 126
    aput-object p2, v0, p1

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lo/IInputMethodWrapper;->f(I)[C

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public e(II)[B
    .locals 3

    .line 90
    invoke-virtual {p0, p1}, Lo/IInputMethodWrapper;->b(I)I

    move-result v0

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 94
    :cond_0
    iget-object v0, p0, Lo/IInputMethodWrapper;->e:[[B

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 95
    array-length v2, v1

    if-ge v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 98
    aput-object p2, v0, p1

    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lo/IInputMethodWrapper;->a(I)[B

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final e(I)[C
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0}, Lo/IInputMethodWrapper;->d(II)[C

    move-result-object p1

    return-object p1
.end method

.method protected f(I)[C
    .locals 0

    .line 156
    new-array p1, p1, [C

    return-object p1
.end method
