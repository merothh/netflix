.class public Lo/UpdateEngineCallback;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UpdateEngineCallback;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final f()Landroid/view/View;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/UpdateEngineCallback;->b:Landroid/view/View;

    return-object v0
.end method
