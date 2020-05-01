.class public Lcom/airbnb/epoxy/ControllerModelList;
.super Lcom/airbnb/epoxy/ModelList;
.source ""


# static fields
.field private static final a:Lcom/airbnb/epoxy/ModelList$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/airbnb/epoxy/ControllerModelList$3;

    invoke-direct {v0}, Lcom/airbnb/epoxy/ControllerModelList$3;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/ControllerModelList;->a:Lcom/airbnb/epoxy/ModelList$TaskDescription;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/ModelList;-><init>(I)V

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ControllerModelList;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 32
    sget-object v0, Lcom/airbnb/epoxy/ControllerModelList;->a:Lcom/airbnb/epoxy/ModelList$TaskDescription;

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/ControllerModelList;->a(Lcom/airbnb/epoxy/ModelList$TaskDescription;)V

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ControllerModelList;->d()V

    return-void
.end method
