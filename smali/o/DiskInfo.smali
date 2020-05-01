.class public Lo/DiskInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aja$StateListAnimator;


# instance fields
.field private final e:Lcom/netflix/dial/DialDevice;


# direct methods
.method public constructor <init>(Lcom/netflix/dial/DialDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DiskInfo;->e:Lcom/netflix/dial/DialDevice;

    return-void
.end method


# virtual methods
.method public d(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lo/DiskInfo;->e:Lcom/netflix/dial/DialDevice;

    invoke-static {v0, p1}, Lcom/netflix/dial/DialDevice;->c(Lcom/netflix/dial/DialDevice;Lorg/w3c/dom/Element;)V

    return-void
.end method
