.class Lo/abI$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abI;->a(Lo/cz;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/abI;


# direct methods
.method constructor <init>(Lo/abI;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lo/abI$5;->a:Lo/abI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Boolean;)V
    .locals 0

    .line 314
    iget-object p1, p0, Lo/abI$5;->a:Lo/abI;

    invoke-static {p1}, Lo/abI;->b(Lo/abI;)V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 311
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/abI$5;->e(Ljava/lang/Boolean;)V

    return-void
.end method
