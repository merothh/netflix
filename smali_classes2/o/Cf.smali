.class public final Lo/Cf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Cf;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Handler;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/Cf;->b:Landroid/os/Handler;

    return-object v0
.end method
