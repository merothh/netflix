.class Lo/Float$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Float;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final d:Lo/IllegalArgumentException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/IllegalArgumentException<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final e:Lo/EnumConstantNotPresentException$ActionBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EnumConstantNotPresentException$ActionBar<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/IllegalArgumentException;Lo/EnumConstantNotPresentException$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IllegalArgumentException<",
            "TD;>;",
            "Lo/EnumConstantNotPresentException$ActionBar<",
            "TD;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lo/Float$Application;->a:Z

    .line 240
    iput-object p1, p0, Lo/Float$Application;->d:Lo/IllegalArgumentException;

    .line 241
    iput-object p2, p0, Lo/Float$Application;->e:Lo/EnumConstantNotPresentException$ActionBar;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 260
    iget-boolean v0, p0, Lo/Float$Application;->a:Z

    if-eqz v0, :cond_1

    .line 261
    sget-boolean v0, Lo/Float;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Resetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Float$Application;->d:Lo/IllegalArgumentException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Lo/Float$Application;->e:Lo/EnumConstantNotPresentException$ActionBar;

    iget-object v1, p0, Lo/Float$Application;->d:Lo/IllegalArgumentException;

    invoke-interface {v0, v1}, Lo/EnumConstantNotPresentException$ActionBar;->onLoaderReset(Lo/IllegalArgumentException;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDeliveredData="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lo/Float$Application;->a:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method e()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lo/Float$Application;->a:Z

    return v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 246
    sget-boolean v0, Lo/Float;->c:Z

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onLoadFinished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Float$Application;->d:Lo/IllegalArgumentException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Float$Application;->d:Lo/IllegalArgumentException;

    .line 248
    invoke-virtual {v1, p1}, Lo/IllegalArgumentException;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    .line 247
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, p0, Lo/Float$Application;->e:Lo/EnumConstantNotPresentException$ActionBar;

    iget-object v1, p0, Lo/Float$Application;->d:Lo/IllegalArgumentException;

    invoke-interface {v0, v1, p1}, Lo/EnumConstantNotPresentException$ActionBar;->onLoadFinished(Lo/IllegalArgumentException;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lo/Float$Application;->a:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/Float$Application;->e:Lo/EnumConstantNotPresentException$ActionBar;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
