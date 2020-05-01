.class final Lo/ExtractEditText$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ExtractEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:[I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(III[I[Ljava/lang/String;II)V
    .locals 0

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    iput p1, p0, Lo/ExtractEditText$ActionBar;->c:I

    .line 1234
    iput p2, p0, Lo/ExtractEditText$ActionBar;->e:I

    .line 1235
    iput p3, p0, Lo/ExtractEditText$ActionBar;->b:I

    .line 1236
    iput-object p4, p0, Lo/ExtractEditText$ActionBar;->d:[I

    .line 1237
    iput-object p5, p0, Lo/ExtractEditText$ActionBar;->a:[Ljava/lang/String;

    .line 1238
    iput p6, p0, Lo/ExtractEditText$ActionBar;->f:I

    .line 1239
    iput p7, p0, Lo/ExtractEditText$ActionBar;->g:I

    return-void
.end method

.method public constructor <init>(Lo/ExtractEditText;)V
    .locals 1

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    invoke-static {p1}, Lo/ExtractEditText;->e(Lo/ExtractEditText;)I

    move-result v0

    iput v0, p0, Lo/ExtractEditText$ActionBar;->c:I

    .line 1245
    invoke-static {p1}, Lo/ExtractEditText;->c(Lo/ExtractEditText;)I

    move-result v0

    iput v0, p0, Lo/ExtractEditText$ActionBar;->e:I

    .line 1246
    invoke-static {p1}, Lo/ExtractEditText;->b(Lo/ExtractEditText;)I

    move-result v0

    iput v0, p0, Lo/ExtractEditText$ActionBar;->b:I

    .line 1247
    invoke-static {p1}, Lo/ExtractEditText;->a(Lo/ExtractEditText;)[I

    move-result-object v0

    iput-object v0, p0, Lo/ExtractEditText$ActionBar;->d:[I

    .line 1248
    invoke-static {p1}, Lo/ExtractEditText;->d(Lo/ExtractEditText;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ExtractEditText$ActionBar;->a:[Ljava/lang/String;

    .line 1249
    invoke-static {p1}, Lo/ExtractEditText;->j(Lo/ExtractEditText;)I

    move-result v0

    iput v0, p0, Lo/ExtractEditText$ActionBar;->f:I

    .line 1250
    invoke-static {p1}, Lo/ExtractEditText;->f(Lo/ExtractEditText;)I

    move-result p1

    iput p1, p0, Lo/ExtractEditText$ActionBar;->g:I

    return-void
.end method

.method public static d(I)Lo/ExtractEditText$ActionBar;
    .locals 9

    shl-int/lit8 v7, p0, 0x3

    .line 1255
    invoke-static {p0}, Lo/ExtractEditText;->e(I)I

    move-result v3

    .line 1257
    new-instance v8, Lo/ExtractEditText$ActionBar;

    new-array v4, v7, [I

    shl-int/lit8 v0, p0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    sub-int v6, v7, p0

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lo/ExtractEditText$ActionBar;-><init>(III[I[Ljava/lang/String;II)V

    return-object v8
.end method
