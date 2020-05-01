.class public final Lo/UW$AssistContent;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistContent"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final g:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UW$AssistContent;->e:I

    iput p2, p0, Lo/UW$AssistContent;->a:I

    iput p3, p0, Lo/UW$AssistContent;->d:I

    iput p4, p0, Lo/UW$AssistContent;->c:I

    iput p5, p0, Lo/UW$AssistContent;->b:I

    iput p6, p0, Lo/UW$AssistContent;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 174
    iget v0, p0, Lo/UW$AssistContent;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 176
    iget v0, p0, Lo/UW$AssistContent;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 175
    iget v0, p0, Lo/UW$AssistContent;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 174
    iget v0, p0, Lo/UW$AssistContent;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 174
    iget v0, p0, Lo/UW$AssistContent;->e:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 177
    iget v0, p0, Lo/UW$AssistContent;->g:I

    return v0
.end method
