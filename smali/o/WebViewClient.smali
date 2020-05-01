.class public interface abstract Lo/WebViewClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebViewClient$Application;,
        Lo/WebViewClient$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/WebViewClient$Application;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lo/WebViewClient$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/WebViewClient$StateListAnimator;->c:Lo/WebViewClient$StateListAnimator;

    sput-object v0, Lo/WebViewClient;->b:Lo/WebViewClient$StateListAnimator;

    return-void
.end method


# virtual methods
.method public abstract a()Lo/WebViewClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/WebViewClient<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract b()Z
.end method

.method public abstract c()Lo/WebViewClient$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract e()Lo/WebViewClient$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract e(I)Z
.end method
