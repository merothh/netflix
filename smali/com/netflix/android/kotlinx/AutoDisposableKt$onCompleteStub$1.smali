.class public final Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;

    invoke-direct {v0}, Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;-><init>()V

    sput-object v0, Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;->a:Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
