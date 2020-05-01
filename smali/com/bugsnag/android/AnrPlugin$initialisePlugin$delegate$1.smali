.class final Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/AnrPlugin;->initialisePlugin(Lo/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Thread;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bugsnag/android/AnrPlugin;

.field final synthetic b:Lo/Service;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/AnrPlugin;Lo/Service;)V
    .locals 0

    iput-object p1, p0, Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;->a:Lcom/bugsnag/android/AnrPlugin;

    iput-object p2, p0, Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;->b:Lo/Service;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Thread;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;->a:Lcom/bugsnag/android/AnrPlugin;

    iget-object v1, p0, Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;->b:Lo/Service;

    invoke-static {v0, p1, v1}, Lcom/bugsnag/android/AnrPlugin;->access$handleAnr(Lcom/bugsnag/android/AnrPlugin;Ljava/lang/Thread;Lo/Service;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;->d(Ljava/lang/Thread;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
