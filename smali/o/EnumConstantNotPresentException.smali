.class public abstract Lo/EnumConstantNotPresentException;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EnumConstantNotPresentException$ActionBar;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lo/UnicodeScript;)Lo/EnumConstantNotPresentException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/UnicodeScript;",
            ":",
            "Lo/Error;",
            ">(TT;)",
            "Lo/EnumConstantNotPresentException;"
        }
    .end annotation

    .line 128
    new-instance v0, Lo/Float;

    move-object v1, p0

    check-cast v1, Lo/Error;

    invoke-interface {v1}, Lo/Error;->getViewModelStore()Lo/ExceptionInInitializerError;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/Float;-><init>(Lo/UnicodeScript;Lo/ExceptionInInitializerError;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(ILandroid/os/Bundle;Lo/EnumConstantNotPresentException$ActionBar;)Lo/IllegalArgumentException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lo/EnumConstantNotPresentException$ActionBar<",
            "TD;>;)",
            "Lo/IllegalArgumentException<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract d()V
.end method
