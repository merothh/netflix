.class public final Lo/SystemUpdateManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic e:Lo/alA;


# direct methods
.method public constructor <init>(Lo/alA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SystemUpdateManager;->e:Lo/alA;

    return-void
.end method


# virtual methods
.method public final synthetic onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/SystemUpdateManager;->e:Lo/alA;

    invoke-interface {v0, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invoke(...)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
