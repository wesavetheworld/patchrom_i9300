.class Lcom/sec/android/app/camera/MenuDimController$DimArray;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuDimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/MenuDimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MenuDimController;I)V
    .locals 4
    .parameter
    .parameter "menuId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x31

    .line 140
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    .line 138
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    .line 141
    iput p2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    return-object v0
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 4
    .parameter "menuid"

    .prologue
    .line 426
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 428
    .local v0, dimReference:Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 431
    .local v1, settingValue:I
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v1           #settingValue:I
    :goto_0
    return v1

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->decreaseReferenceCount()V

    .line 437
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues(Z)V
    .locals 10
    .parameter "exiting"

    .prologue
    const/16 v9, 0x73

    const/16 v8, 0xe

    const/4 v7, 0x3

    const/16 v6, 0xb

    const/4 v5, -0x1

    .line 443
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 445
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    const/4 v1, 0x0

    .local v1, key:I
    :goto_0
    const/16 v3, 0x31

    if-ge v1, v3, :cond_7

    .line 446
    if-eqz p1, :cond_0

    if-ne v1, v6, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$200(Lcom/sec/android/app/camera/MenuDimController;)I

    move-result v2

    .line 454
    .local v2, savedValue:I
    :goto_1
    if-eq v2, v5, :cond_0

    .line 455
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 457
    .end local v2           #savedValue:I
    :cond_0
    if-eqz p1, :cond_1

    if-ne v1, v8, :cond_1

    .line 458
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$300(Lcom/sec/android/app/camera/MenuDimController;)I

    move-result v2

    .line 465
    .restart local v2       #savedValue:I
    :goto_2
    if-eq v2, v5, :cond_1

    .line 466
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 469
    .end local v2           #savedValue:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_5

    .line 445
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .restart local v2       #savedValue:I
    goto :goto_1

    .line 462
    .end local v2           #savedValue:I
    :cond_4
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .restart local v2       #savedValue:I
    goto :goto_2

    .line 473
    .end local v2           #savedValue:I
    :cond_5
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 475
    :pswitch_1
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 476
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 477
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto :goto_3

    .line 480
    .end local v2           #savedValue:I
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 481
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 482
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto :goto_3

    .line 485
    .end local v2           #savedValue:I
    :pswitch_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 486
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 487
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_3

    .line 490
    .end local v2           #savedValue:I
    :pswitch_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 491
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 492
    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    goto :goto_3

    .line 495
    .end local v2           #savedValue:I
    :pswitch_5
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 496
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 497
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_3

    .line 500
    .end local v2           #savedValue:I
    :pswitch_6
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 501
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 502
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_3

    .line 505
    .end local v2           #savedValue:I
    :pswitch_7
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 506
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 507
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_3

    .line 510
    .end local v2           #savedValue:I
    :pswitch_8
    if-nez p1, :cond_2

    .line 511
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 512
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 513
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_3

    .line 517
    .end local v2           #savedValue:I
    :pswitch_9
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 518
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 519
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_3

    .line 522
    .end local v2           #savedValue:I
    :pswitch_a
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 523
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 524
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_3

    .line 527
    .end local v2           #savedValue:I
    :pswitch_b
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 528
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 529
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto/16 :goto_3

    .line 532
    .end local v2           #savedValue:I
    :pswitch_c
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 533
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 534
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    .line 539
    .end local v2           #savedValue:I
    :pswitch_d
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 540
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 541
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_3

    .line 544
    .end local v2           #savedValue:I
    :pswitch_e
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 545
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 546
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto/16 :goto_3

    .line 549
    .end local v2           #savedValue:I
    :pswitch_f
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 550
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 551
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto/16 :goto_3

    .line 554
    .end local v2           #savedValue:I
    :pswitch_10
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 555
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 556
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_3

    .line 559
    .end local v2           #savedValue:I
    :pswitch_11
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 560
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 561
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_3

    .line 564
    .end local v2           #savedValue:I
    :pswitch_12
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 565
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 566
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto/16 :goto_3

    .line 569
    .end local v2           #savedValue:I
    :pswitch_13
    const/16 v3, 0x6d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 570
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 571
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    goto/16 :goto_3

    .line 574
    .end local v2           #savedValue:I
    :pswitch_14
    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 575
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 576
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_3

    .line 581
    .end local v2           #savedValue:I
    :pswitch_15
    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 582
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 583
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    goto/16 :goto_3

    .line 586
    .end local v2           #savedValue:I
    :pswitch_16
    const/16 v3, 0x6b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 587
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 588
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_3

    .line 591
    .end local v2           #savedValue:I
    :pswitch_17
    const/16 v3, 0x72

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 592
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 593
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 594
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x74

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 595
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 596
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x74

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 601
    .end local v2           #savedValue:I
    :pswitch_18
    const/16 v3, 0x78

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 602
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 603
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto/16 :goto_3

    .line 606
    .end local v2           #savedValue:I
    :pswitch_19
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 607
    .restart local v2       #savedValue:I
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-eqz v3, :cond_6

    .line 608
    if-eq v2, v5, :cond_2

    .line 609
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_3

    .line 611
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_3

    .line 615
    .end local v2           #savedValue:I
    :pswitch_1a
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 616
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 617
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto/16 :goto_3

    .line 620
    .end local v2           #savedValue:I
    :pswitch_1b
    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 621
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 622
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    goto/16 :goto_3

    .line 625
    .end local v2           #savedValue:I
    :pswitch_1c
    const/16 v3, 0x70

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 626
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 627
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto/16 :goto_3

    .line 630
    .end local v2           #savedValue:I
    :pswitch_1d
    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 631
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 632
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_3

    .line 635
    .end local v2           #savedValue:I
    :pswitch_1e
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 636
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 637
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setHDR(I)V

    goto/16 :goto_3

    .line 647
    .end local v2           #savedValue:I
    :pswitch_1f
    const/16 v3, 0x7f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 648
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 649
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setEffectRecorderType(I)V

    goto/16 :goto_3

    .line 652
    .end local v2           #savedValue:I
    :pswitch_20
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 653
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 654
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_3

    .line 661
    .end local v2           #savedValue:I
    :cond_7
    return-void

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 5
    .parameter "menuid"
    .parameter "value"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 171
    .local v0, dimReference:Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-nez v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v3, v4, p2}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v1, 0x1

    .line 176
    :goto_0
    return v1

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->increaseReferenceCount()V

    .line 176
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs saveSettingMulti([I)V
    .locals 11
    .parameter "indices"

    .prologue
    const/4 v6, 0x1

    .line 299
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 301
    .local v3, index:I
    if-ltz v3, :cond_1

    const/16 v5, 0x31

    if-ge v3, v5, :cond_1

    move v5, v6

    :goto_1
    if-nez v5, :cond_2

    .line 415
    .end local v3           #index:I
    :cond_0
    return-void

    .line 301
    .restart local v3       #index:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 305
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 307
    .local v1, cs:Lcom/sec/android/app/camera/CameraSettings;
    packed-switch v3, :pswitch_data_0

    .line 299
    :cond_3
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :pswitch_1
    const/16 v5, 0xd

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 312
    :pswitch_2
    const/16 v5, 0xe

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 315
    :pswitch_3
    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 318
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 321
    :pswitch_5
    const/16 v5, 0xa

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 324
    :pswitch_6
    const/16 v5, 0x8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 327
    :pswitch_7
    const/16 v5, 0x12

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 330
    :pswitch_8
    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 333
    :pswitch_9
    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 336
    :pswitch_a
    const/16 v5, 0xb

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 339
    :pswitch_b
    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 342
    :pswitch_c
    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 345
    :pswitch_d
    const/16 v5, 0x9

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 348
    :pswitch_e
    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 351
    :pswitch_f
    const/16 v5, 0x11

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 354
    :pswitch_10
    const/16 v5, 0x16

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 357
    :pswitch_11
    const/16 v5, 0x13

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 360
    :pswitch_12
    const/16 v5, 0x65

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 363
    :pswitch_13
    const/16 v5, 0x6d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 366
    :pswitch_14
    const/16 v5, 0x68

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 369
    :pswitch_15
    const/16 v5, 0x6c

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 372
    :pswitch_16
    const/16 v5, 0x6b

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 375
    :pswitch_17
    const/16 v5, 0x72

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 376
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v5

    const/16 v7, 0x74

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v9, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v5

    const/16 v7, 0x73

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v9, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 383
    :pswitch_18
    const/16 v5, 0x78

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 386
    :pswitch_19
    const/16 v5, 0x75

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 389
    :pswitch_1a
    const/16 v5, 0x67

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 392
    :pswitch_1b
    const/16 v5, 0x6e

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 395
    :pswitch_1c
    const/16 v5, 0x7d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 398
    :pswitch_1d
    const/16 v5, 0x26

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 401
    :pswitch_1e
    const/16 v5, 0x2d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHDR()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 409
    :pswitch_1f
    const/16 v5, 0x10

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_1f
    .end packed-switch
.end method

.method public set(IZ)V
    .locals 2
    .parameter "index"
    .parameter "dimmed"

    .prologue
    .line 181
    if-ltz p1, :cond_1

    const/16 v1, 0x31

    if-ge p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    .line 296
    :cond_0
    :goto_1
    return-void

    .line 181
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 187
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    if-eqz p2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean p2, v1, p1

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v1, p1

    goto :goto_1
.end method

.method public varargs setDimMulti([I)V
    .locals 5
    .parameter "indices"

    .prologue
    .line 418
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 419
    .local v2, index:I
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v2           #index:I
    :cond_0
    return-void
.end method