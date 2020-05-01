.class public final Lo/DC$ContextWrapper;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContextWrapper"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(ZIIZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/DC$ContextWrapper;->d:Z

    iput p2, p0, Lo/DC$ContextWrapper;->a:I

    iput p3, p0, Lo/DC$ContextWrapper;->e:I

    iput-boolean p4, p0, Lo/DC$ContextWrapper;->c:Z

    iput-boolean p5, p0, Lo/DC$ContextWrapper;->b:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 128
    iget v0, p0, Lo/DC$ContextWrapper;->a:I

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/DC$ContextWrapper;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lo/DC$ContextWrapper;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lo/DC$ContextWrapper;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 129
    iget v0, p0, Lo/DC$ContextWrapper;->e:I

    return v0
.end method
