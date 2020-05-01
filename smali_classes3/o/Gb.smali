.class public Lo/Gb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Gb;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/Gb;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->e(Landroid/content/Context;)V

    return-void
.end method
