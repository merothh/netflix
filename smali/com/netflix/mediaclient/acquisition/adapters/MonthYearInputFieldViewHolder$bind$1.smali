.class public final Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder$bind$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder$bind$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthAndYearUpdated(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder$bind$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->setMonthAndYear(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
